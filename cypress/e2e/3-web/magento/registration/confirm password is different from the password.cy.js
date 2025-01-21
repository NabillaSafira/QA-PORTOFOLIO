describe('Registration', () => {
    beforeEach(() => {
      cy.visit('')
    })
  
    it('Create an Account with confirm password is different from the password', () => {
      cy.contains('Create an Account').click()
      cy.get('#firstname').type("Nabilla")
      .should('have.attr', 'aria-required', 'true');
      cy.get('#lastname').type("Safira")
      .should('have.attr', 'aria-required', 'true'); 
      cy.get('[name="email"]').type('nabillasafira@gmail.com')
      .should('have.attr', 'aria-required', 'true');
      cy.get('#password').type("@Nabilla1234")
      .should('have.attr', 'aria-required', 'true'); 
      cy.get('[name="password_confirmation"]').type("@Nabilla1123")
      .should('have.attr', 'aria-required', 'true'); 
      cy.get('.action.submit.primary').click()
      .should('be.visible');

      cy.get('#password-confirmation-error').should('be.visible')
      .should('have.text','Please enter the same value again.')
    })
  })
  