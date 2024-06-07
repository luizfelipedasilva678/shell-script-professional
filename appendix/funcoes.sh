funcao_sem_argumentos() {
    echo "Função sem argumentos"
}

funcao_com_argumentos() {
    echo "Função $#"
}

funcao_sem_argumentos

funcao_com_argumentos um dois tres
