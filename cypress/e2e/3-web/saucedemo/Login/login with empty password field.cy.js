import loginPageSaucedemoCy from "../../../../support/pageObject/saucedemo/loginPageSaucedemo.cy"
describe('login with empty username field', () => {
    beforeEach(() => {
      cy.visit('')
    })
    it('login with empty password field', () => {
    cy.get(loginPageSaucedemoCy.name).type('standard_user')
    .should('be.visible')
    cy.get(loginPageSaucedemoCy.password)
    .should('be.visible');
    cy.get(loginPageSaucedemoCy.login_btn)
    .should('be.visible').click(); 

    cy.get('[data-test="error"]')
    .should('include.text', 'Epic sadface: Password is required');
  
    })
})