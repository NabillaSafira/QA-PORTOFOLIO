import registPage from "../../../../support/pageObject/registPage"
describe('Registration', () => {
    beforeEach(() => {
      cy.visit('')
    })
  
    it('Create an Account with invalid Password', () => {
    cy.contains('Create an Account').click()
    cy.get(registPage.first).type("Nabilla")
    .should('have.attr', 'aria-required', 'true');
    cy.get(registPage.last).type("Safira")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.email).type("nabillasafira123@gmail.com")
    .should('have.attr', 'aria-required', 'true');
    cy.get(registPage.pwd).type("nabilla")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.confirmpwd).type("nabilla")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.regist_btn).click()
    .should('be.visible')

    
    cy.get(registPage.pwd_error).should('be.visible')
    .should('have.text','Minimum length of this field must be equal or greater than 8 symbols. Leading and trailing spaces will be ignored')
    })
})