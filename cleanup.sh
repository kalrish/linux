rm \
	-v \
	-f \
	-- \
	/boot/config-*.old \
	/boot/System.map-*.old \
	/boot/vmlinuz-*.old \
	#

for version in "$@"
do
	rm \
		-v \
		-- \
		"/boot/config-${version}" \
		"/boot/System.map-${version}" \
		"/boot/vmlinuz-${version}" \
		"/boot/loader/entries/${version}.conf" \
		#
done
