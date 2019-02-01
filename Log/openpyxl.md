#### 安装
>
    pip install openpyxl

#### 打开工作簿
>
    1. load_workbook(filename) 加载excel文件

    example:
        import openpyxl

        wb = openpyxl.load_workbook('example.xlsx')

#### 获取工作表
>
    1. get_sheet_names() 获取所有的工作簿

    2. get_sheet_by_name(sheet_name) 获取特定的工作簿

    3. get_active_sheet() 获取当前激活的工作簿

    example:

        import openpyxl

        wb = openpyxl.load_workbook('example.xlsx')

        sheet_names = wb.get_sheet_names()

        sheet_name = wb.get_sheet_by_name('Sheet')

        sheet_active = wb.get_active_sheet()

        print(sheet_names)

        print(sheet_name)

        print(sheet_active)

#### 获取单元格
>
    1. sheet['A1'].value

    2. sheet.cell(row=n, column=m)


    example:
        
        import openpyxl

        wb = openpyxl.load_workbook('example.xlsx')

        sheet = wb.get_active_sheet()

        a1 = sheet['A1'].value

        b2 = sheet.cell(row=2, column=2).value

        c3 = sheet['C3']

        c3 = c3.value

        print(c3.row, c3.column)

        print(a1, b2)

#### 获取表格的大小
>
    1. get_highest_row() 获取表格的行数

    2. get_highest_column() 获取表格的列数


    example:
        import openpyxl

        wb = openpyxl.load_workbook('example.xlsx')

        sheet = wb.get_active_sheet()

        row = sheet.get_highest_row()

        column = sheet.get_highest_column()

        print(row, column)

#### 列字母和数字之间的转换
>
    1. openpyxl.cell.column_index_from_string() 从字母转换为数字

    2. openpyxl.cell.get_column_letter() 从数字转换为字母

    example:

       import openpyxl

       from openpyxl.cell import column_index_from_string, get_column_letter

       wb = openpyxl.load_workbook('example.xlsx')

       sheet = wb.get_active_sheet()

       a1 = sheet.get_column_letter(23)

       b2 = sheet.column_index_from_string('A2')

       print(a1, b2)

#### 从电子表格中读取数据
>
    import openpyxl

    wb = openpyxl.load_workbook('example.xlsx')

    sheet = wb.get_active_sheet()

    for item in sheet.columns[1]:
        print(item)




