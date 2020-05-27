<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions" 
xmlns:xsi="http://www.example.com">>
<xsl:output method="html"/>
<!-- 
  Author: Mirak Bumnanpol
  Student Number: c3320409
  Name of document: cuisine.xsl
  Assignent 2 SENG1050
  Date file was created 11th May 2019
  -->
<xsl:template match="/cuisine">
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" type="text/css" href="../cssFiles/styletwo.css"/>
        <title>
          Information about Restaurants
        </title>
    </head>
    <body>
        <header>
        <h1>Restaurants</h1>
        </header>
        <section>
          <nav>
           <div>
            <ul>
              <li><a href="../htmlFiles/indextwo.html">Home</a></li>
              <li><div class="dropdown"> Restaurant
                <div class="dropdown-content">          <!--Dropdown menu for the link to xml files-->
                  <a href="../xmlFiles/thaitwo.xml"> Thai </a>
                  <a href="../xmlFiles/indiantwo.xml"> Indian </a>
                </div></div><br/></li>
              <li><a href="../htmlFiles/dataCollection.html">Customer Survey Form</a></li>   <!-- Data Collection Page Link -->
              <li><a href="https://visser.io/tools/living-in-australia/privacy-policy-generator/"> Privacy Policy </a></li>
              <li><a href="https://www.termsfeed.com/blog/wp-content/uploads/2019/04/terms-and-conditions-template.pdf"> Terms and Conditions </a></li>
              <li><a href="https://www.impactbnd.com/blog/best-about-us-pages"> About Us </a></li>
              <!--Maybe check over the contact criteria-->
              <li><a href="https://www.ventureharbour.com/15-contact-form-examples-help-design-ultimate-contact-page/"> Contact </a></li>
            </ul>
          </div>
          </nav>
          <article>
            <xsl:for-each select="cuisineType/restaurant">
            <xsl:sort select="restaurant/restaurantinfo"/>
            <p>
                <h2><xsl:value-of select="restaurantinfo/restaurantname"/></h2>
                <br/>
                <br/>

                <!--  restaurants URL-->
                <h4><xsl:text> Website: </xsl:text></h4><a class="light" href="{@url}"><xsl:value-of select="restaurantinfo/url"/></a><br/>

                <!-- Show the customer rating out of 5 stars -->
                <h4><xsl:text>Customer Rating: </xsl:text></h4><xsl:value-of select="restaurantinfo/ratings"/><xsl:text>/5</xsl:text>
                <br/><br/>

                <!-- show the open and close times -->
                <h4><xsl:text>Opening Hours: </xsl:text><br/></h4>
                <xsl:text>Monday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/monday"/><br/>
                <xsl:text>Tuesday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/tuesday"/><br/>
                <xsl:text>Wednesday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/wednesday"/><br/>
                <xsl:text>Thursday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/thursday"/><br/>
                <xsl:text>Friday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/friday"/><br/>
                <xsl:text>Saturday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/saturday"/><br/>
                <xsl:text>Sunday  </xsl:text><xsl:value-of select="restaurantinfo/openinghours/sunday"/>
                    <br/><br/>
               

                 <!-- The minimum price and the fee -->
                <h4><xsl:text>Delivery: </xsl:text></h4>
                <xsl:value-of select="delivery"/>
                <br/>
                <xsl:text>Minimum price: </xsl:text>
                <xsl:value-of select="restaurantinfo/delivery/minimumprice"/>
                <br/>
                <xsl:text>Delivery fee: </xsl:text>
                <xsl:value-of select="restaurantinfo/delivery/deliveryfee"/>
            	
                <br/><br/>

                <!-- Phone numbers -->
                <h4><xsl:text>Phone Number: </xsl:text></h4>
                <xsl:value-of select="restaurantinfo/phonenumber"/>
                <br/><br/>

                <!-- Best rated dish -->
                <h4><xsl:text>Best rated dish: </xsl:text></h4>
                <xsl:value-of select="restaurantinfo/bestrateddish"/>
                <br/>
    		</p>
    		</xsl:for-each>


        <!--copyright information -->
        <div class="copyright"> 
        <h4><u style="color:#b3b3b3; font-size: 12pt; margin-left: 30px;">Copyright Information </u> </h4> <!--more inline CSS to help with formatting the copyright information-->
        <p style="color:#b3b3b3; font-size: 12pt; margin-left: 30px;">Mirak Bumnanpol </p> 
        <p style="color:#b3b3b3; font-size: 12pt; margin-left: 30px;">c3320409@uon.edu.au </p>
        </div>
    </article>
    </section>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>