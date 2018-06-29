#!/bin/bash
#made by necronoise
echo "Youtube-dl.";

read -p "Pesquise por sua musica: " musica;

mpv ytdl://ytsearch:"$musica" --no-video --load-unsafe-playlists

#by necronoise (thanks fenix);
