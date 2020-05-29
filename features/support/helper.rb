module Helper
    def tirar_print(nome_arquivo, resultado)
        caminho_arquivo = "report/screenshorts/test_#{resultado}"
        print= "{#{caminho_arquivo}/#{nome_arquivo}.png}"
        page.save_screenshot{print}
        embed(print,'image/png','Clique aqui')
    end  
end
