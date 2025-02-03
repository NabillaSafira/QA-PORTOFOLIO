import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy";
import sortPagesaucedemoCy from "../../../../support/pageObject/saucedemo/sortPagesaucedemo.cy";
describe('add items to cart', () => {
    beforeEach(() => {
      cy.visit('')
      //login
      cy.get(loginPageSaucedemoCy.name).type('standard_user')
      cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
      cy.get(loginPageSaucedemoCy.login_btn).click(); 
    });

    it('Sort items alphabetically or by price', () => {
      cy.get(sortPagesaucedemoCy.product_sort_container).should('be.visible')
      .select('Name (A to Z)');
      cy.get(sortPagesaucedemoCy.product_sort_container).should('be.visible')
      .select('Name (Z to A)');
      cy.get(sortPagesaucedemoCy.product_sort_container).should('be.visible')
      .select('Price (low to high)');
      cy.get(sortPagesaucedemoCy.product_sort_container).should('be.visible')
      .select('Price (high to low)');

   
    })
})