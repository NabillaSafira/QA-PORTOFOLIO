import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy";
import cartPagesaucedemoCy from "../../../../support/pageObject/saucedemo/cartPagesaucedemo.cy";
describe('add items to cart', () => {
    beforeEach(() => {
      cy.visit('')
      //login
      cy.get(loginPageSaucedemoCy.name).type('standard_user')
      cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
      cy.get(loginPageSaucedemoCy.login_btn).click(); 
    });

    it('add items to cart', () => {
    cy.get(cartPagesaucedemoCy.add_backpage).should('be.visible')
    .click();
    cy.get(cartPagesaucedemoCy.add_jacket).should('be.visible')
    .click();
    cy.get(cartPagesaucedemoCy.add_tshirt).should('be.visible')
    .click();
    })
})