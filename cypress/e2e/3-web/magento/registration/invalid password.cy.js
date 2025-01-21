describe('Registration', () => {
    beforeEach(() => {
      cy.visit('')
    })
  
    it('Create an Account with invalid Password', () => {
    cy.contains('Create an Account').click()
    cy.get('#firstname').type("Nabilla")
    .should('have.attr', 'aria-required', 'true');
    cy.get('#lastname').type("Safira")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get('[name="email"]').type("nabillasafira123@gmail.com")
    .should('have.attr', 'aria-required', 'true');
    cy.get('#password').type("nabilla")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get('[name="password_confirmation"]').type("nabilla")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get('.action.submit.primary').click()
    .should('be.visible')

    
    cy.get('#password-error').should('be.visible')
    .should('have.text','Minimum length of this field must be equal or greater than 8 symbols. Leading and trailing spaces will be ignored')
    })
})