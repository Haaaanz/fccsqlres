#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# TABLES TRUNCATE
echo "$($PSQL "TRUNCATE games,teams;")"
cat games.csv  | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  # skip first line
  if [[ $YEAR != year ]]
  then
    # TEAMS
    # GET WINNER ID
    WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER';")"
    # IF WINNER NOT EXIST
    if [[ -z $WINNER_ID ]]
    then
      # INSERT WINNER
      RES="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")"
      if [[ $RES = "INSERT 0 1" ]]
      then
        echo "$WINNER ADDED TO TEAMS"
      fi
    fi
    # GET OPPONENT ID
    OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT';")"
    # IF OPPONENT NOT EXIST
    if [[ -z $OPPONENT_ID ]]
    then 
    # INSERT OPPONENT
      RES="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")"
      if [[ $RES = "INSERT 0 1" ]]
      then
        echo "$WINNER ADDED TO TEAMS"
      fi
    fi
    # MATCHES
    # GET WINnER ID 
    WIN_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER';")"
    # GET OPPONENT ID
    OPO_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT';")"
    #INSER MATCH
    RES="$($PSQL "INSERT INTO games(winner_id, opponent_id, year, round, winner_goals, opponent_goals) VALUES($WIN_ID,$OPO_ID,$YEAR,'$ROUND',$WINNERGOALS,$OPPONENTGOALS);")"
    #echo "$WIN_ID,$OPO_ID,$YEAR,'$ROUND',$WINNERGOALS,$OPPONENTGOALS"
    if [[ $RES = "INSERT 0 1" ]]
      then
        echo "MATCH ADDED TO GAMES"
      fi

  fi
done