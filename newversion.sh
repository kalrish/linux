set -e

old="$1"
new="$2"

mkdir \
	-- \
	"${new}" \
	#

cp \
	-v \
	-- \
	"${old}/.config" \
	"${new}/.config" \
	#

git \
	add \
	-- \
	"${new}/.config" \
	#

echo "${new}: Add initial configuration

Copied from ${old}." | git commit -F -
