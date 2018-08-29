# Use this file to install Linux software packages into the course image.
# There is a list of available Linux packages at 
# https://packages.debian.org/testing/allpackages

pip3 install --no-deps sqlwhat-ext==0.0.1

# Write the SQL commands to COPY or BULK INSERT the data from CSV files into tables.
# These should be in scripts named datasets/**DATABASENAME**.sql.
# Then uncomment the code below, replacing **COURSEID** and **DATABASENAME**.

# wget https://s3.amazonaws.com/assets.datacamp.com/production/course_**COURSEID**/datasets/**DATABASENAME**.sql

# service postgresql start \
#   && sudo -u postgres createdb --owner repl **DATABASENAME** \
#   && sudo -u repl psql --echo-all --dbname **DATABASENAME** --file **DATABASENAME**.sql \
# && service postgresql stop
