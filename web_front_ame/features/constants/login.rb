class ElementLogin < SitePrism::Page 

    element :user, "#email"
    element :password, "#passwd"
    element :confirme, "#SubmitLogin"
    element :assine, :xpath, "//*[@id='header']/div[2]/div/div/nav/div[1]"
end