#!/bin/bash
#by necronoise (thanks fenix);
#make sure you have youtube-dl and mpv
#this is a simple script thats allow you to search and listen music in your terminal

echo "Youtube-dl.";

read -p "Pesquise por sua musica: " musica;

mpv ytdl://ytsearch:"$musica" --no-video --load-unsafe-playlists


