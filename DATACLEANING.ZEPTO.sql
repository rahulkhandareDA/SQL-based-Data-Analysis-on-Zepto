/* PROJECT : BUSINESS INTELLIGENCE ANALYSIS FOR A QUICK-COMMERCE RETAIL PLATFORM

Author: Rahul Khandare

*/;


use zepto_project;
select * from zepto



/*                                          DATA EXPLORATION                               */;



select count(*) from zepto;

/*    Sample data    */; 

Select * from zepto 
limit 10;

/* null values */ ; 

select * from zepto 
where Category is null 
or 
 name is null
 or 
 MRP is null
 or 
 Discountpercent is null
 or 
 availablequantity is null
 or 
 discountedsellingprice is null
 or 
 weightinGms is null
 or 
 outofstock is null
 or 
 quantity is null;
 
 /*     Different product categories     */;
 
 Select distinct category from zepto;
 
 /*     Count of Stock outs     */;
 
 Select outofstock, count(*) from zepto
 group by outofstock;
 
 /*      Products listed multiple times     */
 
 Select name, count(*) From zepto
 group by name
 having count(*) > 1 
 order by count(*) desc;
 
 
 
 /*                                          DATA CLEANING                                            */
 
 
 
 /*   Products with Price as 0   */
 
 Select * from Zepto 
 where MRP = 0 or discountedsellingprice = 0;
 
 Delete from zepto
 where mrp = 0;
 
 /* Converting Paise into Rupees   */;
 
 Update zepto
 set mrp = mrp/100.0 , 
discountedsellingprice = discountedsellingprice/100.0;

  select name, discountedsellingprice, mrp from zepto;
  
  