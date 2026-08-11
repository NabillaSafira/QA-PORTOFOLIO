import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy";
import cartPagesaucedemoCy from "../../../../support/pageObject/saucedemo/cartPagesaucedemo.cy";
describe('add items to cart', () => {
    beforeEach(() => {
      cy.visit('')
        cy.get(loginPageSaucedemoCy.name).type('standard_user')
        cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
        cy.get(loginPageSaucedemoCy.login_btn).click(); 
     });
        it('remove an item from the cart', () => {
        cy.get(cartPagesaucedemoCy.add_backpage).click();
        cy.get(cartPagesaucedemoCy.add_jacket).click();
        cy.get(cartPagesaucedemoCy.add_tshirt).click();
        //remove an item from the cart
        cy.get(cartPagesaucedemoCy.cart).should('be.visible')
        .click();
        cy.get(cartPagesaucedemoCy.remove_backpage).should('be.visible')
        .click();    
       
     })
})