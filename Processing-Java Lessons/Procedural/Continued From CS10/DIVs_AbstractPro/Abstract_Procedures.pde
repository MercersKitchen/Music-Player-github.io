/* linear equation, three terms
 - lead only +
 - +/- second term, third term
 - last term has ratio of different numbers
 
 - *-1 is subtraction
 - *0 is not included
 */
float linear3Term(int coef1, float lead, int coef2, float second, int coef3, float third, float a, float b) {
  return coef1*lead + coef2*second + coef3*third*(a/b);
}
//
//End Abstract Procedures
