# Fintech Sales Data
## An SQL Data Visualization Project
### by salihyasincetin@hotmail.com

In this project, I will visualize the data set given to me with the help of appropriate SQL and PowerBI.

These data sets contain information about the sales of the Fintech company. We want to restructure and visualize data in a more organized and useful way.

1. Reviewing Incoming Job Request
2. Determining Tasks Required for the Job
3. Extracting and Formatting Necessary Data from the Dataset
4. Constructing the Data Tree
5. Adding New Dimensions to the Table
6. Data Visualization
7. Creating a Presentation for the Employer

In the Job Demand pdf file, I have tabulated what needs to be done about the job offer we receive on the next page of the pdf. When I told Mr. Steven that it was suitable for me, he sent me 20 csv files. These were different data belonging to the company.

Among the 20 csv files sent to us, I chose 4 csv files and 1 excel file. Then, with the help of SQL, I extracted the columns I needed from these tables and brought them into the format we will use.
After all these procedures, we can now switch to the PowerBI application and transfer our files there.

- We have 4 tables. First, we need to create a data tree between these tables. Here's what the tables and columns I linked look like:

  - Dım_customers . Customer key --> fact_ınternetsales . Customer key 

  - Dım_products . Product key --> fact_ınternetsales . Product key 

  - Dım_calender . Date --> fact_ınternetsales . Orderdatekey 

  - Dım_calender.date --> Fact_Budget.date 

![1](https://github.com/SalihYasin/Data-Visualization/assets/117492474/ced6d33b-6624-4ab8-ae9b-8f59436b8044)

- Now that we have created our data tree, we can add new measures for future use. The measurements I created are as follows:

  - Budget Amount : Budget Amount = SUM ( FACT_Budget[Budget]) 

  - Sales : Sales = SUM ( FACT_InternetSales[SalesAmount]) 

  - Sales  - Budget : Sales - Budget = [Sales]-[Budget Amount] 

  - Sales / Budget Amount : Sales / Budget Amount = DIVIDE ( [Sales] , FACT_Budget[Budget Amount] ) 

![5](https://github.com/SalihYasin/Data-Visualization/assets/117492474/ae4f9d26-2f9d-4d40-8f69-09849ca5da9c)

- The first visual element I added after writing the title at the top left of our table will allow the user to filter Customer City, Sub Category, Category, Product Name while searching.

![6](https://github.com/SalihYasin/Data-Visualization/assets/117492474/5ba8d25c-3bee-4bc5-9b4c-89c00b57478a)

- Secondly, I add a visual element to the top that will allow the user to filter by year and month.

![7](https://github.com/SalihYasin/Data-Visualization/assets/117492474/a4ab8478-6e90-4ccc-83bc-ff7323761eb0)  

- Now that we have taken care of the filtering, we can now produce calculations and results using our previously created measurements. I place a KPI calculator in my table (KPIs are used to evaluate the performance of businesses, direct their strategies and help them achieve their goals). Additionally, the indicators and comparisons I use are as follows:

![8](https://github.com/SalihYasin/Data-Visualization/assets/117492474/d791ec76-d96a-4be3-814d-ce593da22f9d) ![9](https://github.com/SalihYasin/Data-Visualization/assets/117492474/faa9cb42-ae08-4479-93a2-bfc89856a580)

- Now it's time to create a donut chart comparing categories based on sales figures.

![10](https://github.com/SalihYasin/Data-Visualization/assets/117492474/fd572475-86ff-45f9-860b-5b8be80347f2)

- I think there should be a line chart that will allow us to see sales and total income clearly. So I'm going to add this to my table as well

![11](https://github.com/SalihYasin/Data-Visualization/assets/117492474/89eab01a-952a-4077-a58f-085f1568439e)

- Not without a bar chart that ranks customers and products by sales :

![12](https://github.com/SalihYasin/Data-Visualization/assets/117492474/259b2ab9-f0e8-423e-99d4-396150c825b0)

- Finally, it may be useful to see customers' addresses on the map. Moreover, it looks very cool.

![13](https://github.com/SalihYasin/Data-Visualization/assets/117492474/43dfea6c-c600-405e-a9e4-b0bc2f6243a7)

- Here's what the result looks like ! :

![14](https://github.com/SalihYasin/Data-Visualization/assets/117492474/a4bda148-65f1-45f0-8cee-d845ab373322)


- Let's go into some color detail and present Mr. Steven with this great table where he can see all the data about Fintech.

![PRESENTATION](https://github.com/SalihYasin/Data-Visualization/assets/117492474/488c3354-d651-4d1a-8e6f-5e8a742fba1f)















