#!/bin/bash
function get_latest_version() {
	echo "Resolving Host" 1>&2 
	echo "Starting connection" 1>&2
	echo "Downloading JSON" 1>&2
	echo "Extracting version"
	echo "3.2.28"
	echo "Linux Redirection Test"
}

# 1 print everything both stdout as well as sterr
echo "the current version of foo is $(get_latest_version)"

# # 2 redirect stdout stream to stderr stream
echo "the current version of foo is $(get_latest_version 1>&2)"

# # 3 redirect stdout stream to /dev/null | only print stderr
echo "the current version of foo is $(get_latest_version 1>/dev/null)"

# # 4 redirect stderr stream to /dev/null | only print stdout
echo "the current version of foo is $(get_latest_version 2>/dev/null)"

# # 5 redirect stdout stream to output_log.txt file and stderr stream to error_log.txt file
echo "the current version of foo is $(get_latest_version 2>error_log.txt 1>output_log.txt)"

# ## 6 watch the order of streams being redirected
# # 1 redirect stderr to /dev/null and stdout to stderr resulting in both streams being redirected to /dev/null
echo "the current version of foo is $(get_latest_version 2>/dev/null 1>&2)"
echo "the current version of foo is $(get_latest_version 2>log.txt 1>&2)"


# # 2 redirect stdout to stderr | at this point stderr is pointing to its default destination so stdout is printed then finally stderr is then redirected to /dev/null 
echo "the current version of foo is $(get_latest_version 1>&2 2>/dev/null)"
