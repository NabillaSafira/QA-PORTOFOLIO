import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy";
import logoutPagesaucedemoCy from "../../../../support/pageObject/saucedemo/logoutPagesaucedemo.cy";
describe('add items to cart', () => {
    beforeEach(() => {
      cy.visit('')
      //login
      cy.get(loginPageSaucedemoCy.name).type('standard_user')
      cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
      cy.get(loginPageSaucedemoCy.login_btn).click(); 
    });

    it('Sort items alphabetically or by price', () => {
     cy.get(logoutPagesaucedemoCy.btn_menu).click();
     cy.get(logoutPagesaucedemoCy.btn_logout).click(); 
    })
})