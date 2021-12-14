

# df = pd.read_csv('1.csv')
# df = pd.DataFrame(df)
# try:
#     # Подключение к существующей базе данных
#     connection = psycopg2.connect(user="django",
#                                   # пароль, который указали при установке PostgreSQL
#                                   # role="django",
#                                   password="password",
#                                   host="127.0.0.1",
#                                   port="5432",
#                                   database="c")
#     connection.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
#     # Курсор для выполнения операций с базой данных
#     cursor = connection.cursor()
#     query = f'INSERT INTO inputs_materials (name) VALUES ({a});'
#     cursor.execute(query)
#
#
#
#
# except (Exception, Error) as error:
#     print("Ошибка при работе с PostgreSQL", error)
# finally:
#     if connection:
#         cursor.close()
#         connection.close()
#         print("Соединение с PostgreSQL закрыто")


# CREATE SO

user = request.user
sales = pd.read_csv('/Users/ilya.shumilov/Desktop/Script - SO.csv')
df_sales = pd.DataFrame(sales)
count = 0
print(df_sales)
for i in df_sales:
    try:

        client = Empresa.object.get(name=df_sales.loc[count,'Buyer'])
        destination = Ports.objects.get(port=df_sales.loc[count,'Destination / City'])
        material = Materials.objects.get(name=df_sales.loc[count,'Product / EN643']).name

        min = 0
        try:
            min = float(df_sales.loc[count, 'MT/cntr'].replace(',', '.'))
        except:
            min = float(df_sales.loc[count, 'MT/cntr'])
        cost = 0

        try:
            cost = float(df_sales.loc[count,'Sales Price (USD/Ton)'].replace(',','.'))
        except:
            cost = float(df_sales.loc[count,'Sales Price (USD/Ton)'])

        sale = SO(user=user, number=df_sales.loc[count,'SO'], client=client, destination=destination, date=df_sales.loc[count,'SO date'], material=material, cntr=int(df_sales.loc[count,'Cntrs']), \
                  Tons=float(df_sales.loc[count,'Tons']), min=min, cost=cost, currency='USD', comment=str(df_sales.loc[count,'Add. Info'])+str(df_sales.loc[count,'Order Conditions / Remarks']),\
                  cpt=str(df_sales.loc[count, 'Customers Payment Terms']), stat=True)
        sale.save()

        count += 1
    except:
        pass



























