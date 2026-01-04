set -l board_vendor_file /sys/devices/virtual/dmi/id/board_vendor
set -l imds_url http://169.254.169.254/latest

if not set -q AWS_REGION; and test -f $board_vendor_file; and read -l --null board_vendor <$board_vendor_file; and test $board_vendor = 'Amazon EC2'\n
    set -l token (curl -fsS -X PUT $imds_url/api/token -H 'X-AWS-EC2-Metadata-Token-TTL-Seconds: 5')
    set -gx AWS_REGION (curl -fsS $imds_url/meta-data/placement/region -H "X-AWS-EC2-Metadata-Token: $token")
end
