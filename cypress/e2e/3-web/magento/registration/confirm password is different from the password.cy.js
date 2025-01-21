import registPage from "../../../../support/pageObject/registPage"
describe('Registration', () => {
    beforeEach(() => {
      cy.visit('')
    })
  
    it('Create an Account with confirm password is different from the password', () => {
      cy.contains('Create an Account').click()
      cy.get(registPage.first).type("Nabilla")
      .should('have.attr', 'aria-required', 'true');
      cy.get(registPage.last).type("Safira")
      .should('have.attr', 'aria-required', 'true'); 
      cy.get(registPage.email).type('nabillasafira@gmail.com')
      .should('have.attr', 'aria-required', 'true');
      cy.get(registPage.pwd).type("@Nabilla1234")
      .should('have.attr', 'aria-required', 'true'); 
      cy.get(registPage.confirmpwd).type("@Nabilla1123")
      .should('have.attr', 'aria-required', 'true'); 
      cy.get(registPage.regist_btn).click()
      .should('be.visible');

      cy.get(registPage.confirmpwd_error).should('be.visible')
      .should('have.text','Please enter the same value again.')
    })
  })

  