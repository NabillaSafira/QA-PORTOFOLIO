describe('Registration', () => {
  beforeEach(() => {
    cy.visit('https://magento.softwaretestingboard.com/')
  })

  it('Create an Account with empty field email address', () => {
    cy.contains('Create an Account').click()
    cy.get('#firstname').type("Nabilla")
    .should('have.attr', 'aria-required', 'true');
    cy.get('#lastname').type("Safira")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get('[name="email"]')
    .should('have.attr', 'aria-required', 'true');
    cy.get('#password').type("@Nabilla1234")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get('[name="password_confirmation"]').type("@Nabilla1234")
    .should('have.attr', 'aria-required', 'true'); 
    cy.get('.action.submit.primary').click()
    .should('be.visible');
  })
})
