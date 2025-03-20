#requiring users to create usernames that follow a 
#certain format (e.g., 3 lowercase letters followed by 3 numbers).

if [[ $USER =~ ^[a-z]{3}[0-9]{3}$ ]] ; then
  echo "Username is valid"
else
  echo "Username is invalid"
fi


#Common Regex Patterns:
\d - Matches any digit.
\D - Matches any non-digit character.
\s - Matches any whitespace.
\W - Matches any non-word character (like punctuation).

#Break: Used to exit a loop when a condition is met.
for i in {1..10}; do
  if [[ $i -eq 5 ]]; then
    break  # Stops the loop when i equals 5
  fi
  echo $i
done

#Custom Exit Codes
aws ec2 describe-vpcs --region us-east-1
if [[ $? -ne 0 ]]; then
  echo "Incorrect region, exiting"
  exit 1
else
  echo "Correct region"
fi

#Arrays in Shell Scripts

NAME='SaileshHeera'
echo ${#NAME}  # Outputs the length of the string

for i in {0..${#NAME}}; do
  echo ${NAME:$i:1}  # Prints one character at a time
done