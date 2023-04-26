import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// this step definition is already in search.js
// so commented it out since duplicate step definitions
// are not allowed
/*Given('that I am on the start page', () => {
});*/

// define variables outside steps
// (and give them values inside a step)
// if you want to reuse them in another step
let searchedFor;



Given('that I have searched for {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click the buy button {string} times', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
    cy.log("searchedFor", searchedFor);
    cy.get('.product h2').contains(searchedFor)
      .parents('.product')
      .find('button').contains('Köp')
      .click();
  }
});

Then('there should be {string} {string} added in the cart', (quantity, productName) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(productName)
    .contains(quantity + 'st')
    .should('have.length', 1);
});

//remove
When('I click the removeOne button {string} times', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
    cy.log("searchedFor", searchedFor);
    cy.get('#cart li').contains(searchedFor)
      .parents('li')
      .find('.removeOne')
      .click();
  }
});
//check quantity

Then('there should be {string} {string} left in the cart', (quantity, productName) => {
  cy.log(productName,quantity)
  cy.get('#cart li')
    .contains(productName)
    .parents('li')
    .contains(quantity + 'st')
    .should('exist')
});