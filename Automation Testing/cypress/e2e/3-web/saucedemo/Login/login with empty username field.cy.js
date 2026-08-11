import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy"
describe('login with empty username field', () => {
    beforeEach(() => {
      cy.visit('')
    })
    it('login with empty username field', () => {
    cy.get(loginPageSaucedemoCy.name)
    .should('be.visible');
    cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
    .should('be.visible');
    cy.get(loginPageSaucedemoCy.login_btn)
    .should('be.visible').click(); 

    cy.get('[data-test="error"]')
    .should('include.text', 'Epic sadface: Username is required');
  
    })
})