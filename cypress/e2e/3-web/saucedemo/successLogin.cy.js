import loginPageSaucedemoCy from "../../../support/pageObject/saucedemo/loginPageSaucedemo.cy"
describe('Seccessfully Login', () => {
    beforeEach(() => {
      cy.visit('')
    })
    it('successfully login', () => {
    cy.get(loginPageSaucedemoCy.name).type('standard_user')
    .should('be.visible');
    cy.get(loginPageSaucedemoCy.password).type('secret_sauce')
    .should('be.visible');
    cy.get(loginPageSaucedemoCy.login_btn)
    .should('be.visible').click(); 
  
    })
})