function signinaws 
    set creds (aws sts get-session-token \
    --output text \
    --serial-number $STS_SERIAL_NO \
    --token-code $argv); \
    and set -x AWS_ACCESS_KEY_ID (echo $creds | awk '{print $2}'); \
    and set -x AWS_SECRET_ACCESS_KEY (echo $creds | awk '{print $4}'); \
    and set -x AWS_SECURITY_TOKEN (echo $creds | awk '{print $5}'); \
    and set -x my_mode 'awslogin'; \
    and echo $AWS_SECRET_ACCESS_KEY; \
    and fish
end
