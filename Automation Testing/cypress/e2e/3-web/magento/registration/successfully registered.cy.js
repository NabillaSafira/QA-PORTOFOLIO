import registPage from "../../../../support/pageObject/registPage"
describe('Registration', () => {
    beforeEach(() => {
      cy.visit('')
    })
  
    it('successfully registered', () => {
    cy.contains('Create an Account').click()
    cy.get(registPage.first).type("Nabilla")
    .should('have.attr', 'aria-required', 'true');
    cy.get(registPage.last).type("Safira")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.email).type("nabillasafira123@gmail.com")
    .should('have.attr', 'aria-required', 'true');
    cy.get(registPage.pwd).type("@Nabilla123")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.confirmpwd).type("@Nabilla123")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.regist_btn).click()
    .should('be.visible')
    })
})