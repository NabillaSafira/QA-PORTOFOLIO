import registPage from "../../../../support/pageObject/registPage"

describe('Registration', () => {
  beforeEach(() => {
    cy.visit('')
  })

  it('Create an Account with empty field email address', () => {
    cy.contains('Create an Account').click()
    cy.get(registPage.first).type("Nabilla")
    .should('have.attr', 'aria-required', 'true');
    cy.get(registPage.last).type("Safira")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.email)
    .should('have.attr', 'aria-required', 'true');
    cy.get(registPage.pwd).type("@Nabilla1234")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.confirmpwd).type("@Nabilla1234")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get(registPage.regist_btn).click()
    .should('be.visible');

    cy.get(registPage.email_error).should('be.visible')
    .should('have.text','This is a required field.')
  })
})
