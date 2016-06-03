case $OSTYPE in
	linux*)
	  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
	  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
	  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
	  #TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	  #TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	  #TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
	  #TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
	;;
	darwin*)
	  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
	  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
	  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
	;;
esac

if [ -f ~/.local/share/fonts/Ricomoon.ttf ];then
	export phoenix=""
	export phoenix_gen=""
	export archlinux=""
	export archlinuxjp=""
	export icon_good=""
	export icon_bad=""
	export icon_directory=""
	export icon_github=""
	export icon_git=""
	export icon_power=""
	export icon_lan=""
	export icon_wan=""
	export icon_lock=""
	export icon_git_branch=""
	export icon_git_commit=""

	if [ -n "$SSH_CONNECTION" ];then
		export icon_user_ssh="%F{cyan}%K{red}${phoenix_gen}%f%k"
		export icon_user="%F{cyan}%K{red}${phoenix}%f%k"
		#if echo $SSH_CLIENT | grep '192.168' > /dev/null 2>&1;then
		#	export icon_user="${icon_user} ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN} ${icon_lan}"
		#else
		#	export icon_user="${icon_user} ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN} ${icon_wan}"
		#fi
	else
		export icon_user_ssh="${phoenix}"
		export icon_user=${phoenix}
	fi

	export icon_os=${archlinux}
	export icon_mem=""

	case $OSTYPE in
		darwin*)
			export icon_os=""
			;;
		linux*)
			export icon_os=${archlinux}
			;;
		windows*)
			export icon_os=""
			;;
		android*)
			export icon_os=""
			;;
	esac

	export icon_off=""
	export icon_on=""
	export icon_ime=""
	export icon_bat=""
	export icon_bookmark=""
	export icon_hdd=""
	export icon_rocket=""
	export icon_tag=""
	export icon_linux=""
	export icon_code=""
	export icon_twitter=""
	export icon_dropbox=""
	export icon_download=""
	export icon_upload=""
	export icon_battery=""
	export icon_volume=""
	export icon_usb=""
	export icon_bluetooth=""
	export icon_bitbucket=""
	export icon_heroku="H"
	export icon_slack=""
	export icon_mail=""
	export icon_mobile=""
	export icon_notepc=""
	export icon_keyboard=""
	export icon_heart=""
	export icon_time=""
	export icon_home=""
	export icon_open=""
	export icon_userone=""
	export icon_load=""
	export icon_reload=""
	export icon_music=""
	export icon_music_re=""
	export icon_music_re=""
	export icon_music_ra=""
	export icon_git_push=${icon_download}
	export icon_git_merge=${icon_download}
	export icon_git_fork=${icon_upload}
  	export TMUX_POWERLINE_GIT_BRANCH_ST=${icon_git_branch}
	export TMUX_POWERLINE_GIT_BRANCH=${icon_git_commit}
fi
