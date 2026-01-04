set -l board_vendor_file /sys/devices/virtual/dmi/id/board_vendor
test -f $board_vendor_file; and string match --quiet 'Amazon EC2' <$board_vendor_file; or exit

set -l imds_url http://169.254.169.254/latest

not set -q AWS_REGION
and set -l imds_token (curl -fsS -X PUT $imds_url/api/token -H 'X-AWS-EC2-Metadata-Token-TTL-Seconds: 1')
and set -x AWS_REGION (curl -fsS $imds_url/meta-data/placement/region -H "X-AWS-EC2-Metadata-Token: $imds_token")

set -x AWS_USE_DUALSTACK_ENDPOINT true
