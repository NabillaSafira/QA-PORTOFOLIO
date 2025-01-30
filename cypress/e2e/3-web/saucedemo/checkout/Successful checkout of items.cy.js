import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy";
import cartPagesaucedemoCy from "../../../../support/pageObject/saucedemo/cartPagesaucedemo.cy";
import checkoutPagesaucedemoCy from "../../../../support/pageObject/saucedemo/checkoutPagesaucedemo.cy";
describe('add items to cart', () => {
    beforeEach(() => {
      cy.visit('')
        cy.get(loginPageSaucedemoCy.name).type('standard_user')
        cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
        cy.get(loginPageSaucedemoCy.login_btn).click(); 
     });
        it('Successful checkout of items', () => {
        cy.get(cartPagesaucedemoCy.add_backpage).click();
        cy.get(cartPagesaucedemoCy.add_jacket).click();
        cy.get(cartPagesaucedemoCy.add_tshirt).click();
        //remove an item from the cart
        cy.get(cartPagesaucedemoCy.cart).should('be.visible')
        .click();
        cy.get(cartPagesaucedemoCy.remove_backpage).should('be.visible')
        .click();    
        //prossed to checkout
        cy.get(checkoutPagesaucedemoCy.checkout).should('be.visible')
        .click();
        cy.get(checkoutPagesaucedemoCy.first_name).type('Nabilla')
        .should('be.visible');
        cy.get(checkoutPagesaucedemoCy.last_name).type('Safira')
        .should('be.visible');
        cy.get(checkoutPagesaucedemoCy.zip).type('1234')
        .should('be.visible');
        cy.get(checkoutPagesaucedemoCy.continue).should('be.visible')
        .click(); 
        cy.get(checkoutPagesaucedemoCy.finish).should('be.visible')
       .click(); 
     })
})