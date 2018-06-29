#!/bin/bash
#by necronoise (thanks fenix);
echo "Youtube-dl.";

read -p "Pesquise por sua musica: " musica;

mpv ytdl://ytsearch:"$musica" --no-video --load-unsafe-playlists


