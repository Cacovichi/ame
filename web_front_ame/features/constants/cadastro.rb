class Elementcadastro < SitePrism::Page 

    element :endereco_email, "#email_create"
    element :crie_conta, "#SubmitCreate"
    element :genero, "#id_gender2"
    element :nome, "#customer_firstname"
    element :sobrenome, "#customer_lastname"
    element :senha, "#passwd"
    element :endereco, "#address1"
    element :cidade, "#city"
    element :estado, :xpath, "//select[contains(text(),'State')]"
    element :opcao_estado, :xpath, "//*[@id='id_state']/option[7]"
    element :cep, "#postcode"
    element :tel_cel, "#phone_mobile"
    element :referencia, "#alias"
    element :registro, "#submitAccount"
end