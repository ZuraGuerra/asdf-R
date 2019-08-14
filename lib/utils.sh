ensure_rbuild_installed(){
	if [ ! -f "$(rbuild_command)" ]; then
		download_rbuild 1>&2
	fi
}

download_rbuild(){
	echo "Downloading R-build..."
	git clone "https://github.com/viking/R-build.git" "$(rbuild_directory_path)"
  local old_path="$(pwd)"
  cd "$(rbuild_directory_path)"
  git checkout bug/compilation_issues #Open pull request at https://github.com/viking/R-build/pull/8
  cd $old_path
}

rbuild_command(){
	echo "$(rbuild_directory_path)/bin/R-build"
}

rbuild_directory_path(){
	echo "$(dirname $(dirname $0))/R-build"
}
