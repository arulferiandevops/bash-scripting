#!/bin/bash

# Ini adalah fungsi untuk mengecek apakah suatu bilangan itu bilangan prima atau bukan
function prima() {
  local bilangan=$1
  local i=2

  # Cek apakah bilangan itu sama dengan 1
  if [ $bilangan -eq 1 ]; then
    return 1
  fi

  # Cek apakah bilangan itu sama dengan 2
  if [ $bilangan -eq 2 ]; then
    return 0
  fi

  # Cek apakah bilangan itu habis dibagi oleh bilangan selain 1 dan dirinya sendiri
  while [ $i -lt $bilangan ]; do
    if [ $(($bilangan % $i)) -eq 0 ]; then
      return 1
    fi
    i=$(($i + 1))
  done

  # Jika tidak ada bilangan selain 1 dan dirinya sendiri yang bisa membagi bilangan tersebut, maka bilangan tersebut adalah bilangan prima
  return 0
}

# Ini adalah fungsi utama
function main() {
  local bilangan=$1

  # Cek apakah bilangan tersebut valid
  if [ -z $bilangan ]; then
    echo "Bilangan tidak boleh kosong"
    exit 1
  fi

  # Cek apakah bilangan tersebut bilangan prima
  if [ $(prima $bilangan) -eq 0 ]; then
    echo "bilangan ini adalah bilangan prima"
  else
    echo "bilangan ini bukan bilangan prima"
  fi
}

# Jalankan fungsi utama
main $1