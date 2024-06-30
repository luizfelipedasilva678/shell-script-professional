BANCO=usuarios.txt

source bantex.sh || {
    echo "Ocorreu um erro ao incluir o bantex.sh"
    exit 1
}

echo "Acção escolhida: $acao"

while :; do
    acao=$(
        dialog --stdout \
            --menu "Aplicativo Zuser - Interface amigável" \
            0 0 0 \
            lista "Lista todos os usuários" \
            adiciona "Adiciona usuário" \
            remove "Remove usuário"
    )
    [ $? -ne 0 ] && exit

    case "$acao" in

    lista)
        temp=$(mktemp)
        pega_campo 1 | sed 1d >"$temp"
        dialog --title "Usuários" --textbox "$temp" 13 30
        rm $temp
        ;;

    adiciona)
        login=$(dialog --stdout --inputbox "Digite o login:" 0 0)
        [ $? -ne 0 ] && continue
        [ "$login" ] || continue

        tem_chave "$login" && {
            msg="O usuário '$login' já existe."
            dialog --msgbox "$msg" 6 40
            continue
        }

        nome=$(dialog --stdout --inputbox "Digite o nome:" 0 0)
        [ $? -ne 0 ] && continue
        idade=$(dialog --stdout --inputbox "Digite a idade:" 0 0)
        [ $? -ne 0 ] && continue
        sexo=$(dialog --stdout --radiolist "Sexo" 0 0 3 \ Feminino "" on Masculino "" off)
        [ $? -ne 0 ] && continue
        sexo=$(echo $sexo | cut -c1)

        msg=$(insere_registro "$login:$nome:$idade:$sexo")
        dialog --title "Resultado" --msgbox "$msg" 6 40
        ;;

    remove)
        usuarios=$(pega_campo 1,2 | sed 1d)
        usuarios=$(echo "$usuarios" | sed 's/:/ "/;s/$/"/')

        login=$(eval dialog --stdout \ --menu \"Escolha o usuário a remove\" \ 0 0 0 $usuarios)
        [ $? -ne 0 ] && continue

        msg=$(apaga_registro "$login")
        dialog --title "Resultado" --msgbox "$msg" 6 40
        ;;

    esac
done
