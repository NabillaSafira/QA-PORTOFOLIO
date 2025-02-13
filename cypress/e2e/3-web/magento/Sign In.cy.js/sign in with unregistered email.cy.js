import loginPage from "../../../../support/pageObject/magento/loginPageMagento"
describe('Registration', () => {
    beforeEach(() => {
      cy.visit('')
    })
  
    it('Sign in with registered email', () => {
    cy.contains('Sign In').click()
    cy.get(loginPage.login_Email).type('nabilla@gmail.com')
    .should('have.attr', 'aria-required', 'true');
    cy.get(loginPage.login_pass).type('@Nabilla123')
    .should('have.attr', 'aria-required', 'true');
    cy.get(loginPage.login_btn).click()
    .should('be.visible');
    
    cy.get(loginPage.error_login)
   .should('include.text', 'The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.');
    })
})