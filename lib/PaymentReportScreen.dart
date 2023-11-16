import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
class PaymentReportScreen extends StatefulWidget {
  const PaymentReportScreen({super.key});
  @override
  State<PaymentReportScreen> createState() => _PaymentReportScreenState();
}
class _PaymentReportScreenState extends State<PaymentReportScreen> {
  TextEditingController items = TextEditingController();
  TextEditingController items1 = TextEditingController();
  TextEditingController items2 = TextEditingController();
  TextEditingController items3 = TextEditingController();
  TextEditingController items4 = TextEditingController();
  TextEditingController searchController = TextEditingController();
  TextEditingController textEditingController = TextEditingController();
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }
  String dropdownvalue = 'None';
  var _items = [
    'None',
    'Kamlesh Ganeshbhai Kanani',
    'Admin',
    'Anshu Rajendra Parmar',
    'Balwantbhai Lakhmanbhai Makwana',
    'BHAVNA RAKESH VYAS',
  ];
  String dropdownvalue1 = 'None';
  var _items1 = [
    'None',
    'Admin',
    'Project',
    'Legal',
    'Purchase',
    'Sales',
    'WFH',
  ];
  String dropdownvalue2 = 'None';
  var _items2 = [
    'None',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'Auguest',
    'September',
    'October',
    'November',
    'December',
  ];
  String dropdownvalue3 = 'None';
  var _items3 = [
    'None',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
  ];
  String dropdownvalue4 = 'None';
  var _items4 = [
    'None',
    'State Bank of India',
    'Bank of Baroda',
    'Indusind Bank',
    'Hdfc Bank',
    'Icici Bank',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("CONTRACTUAL PAYMENT REPORT",textAlign: TextAlign.start,style: TextStyle(color: Colors.blue.shade900,fontSize: 25,fontWeight: FontWeight.bold,),),
            ],),
          SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Team Name",style: TextStyle(fontSize: 15,),),
            Text("Department",style: TextStyle(fontSize: 15,),),
            Text("Month",style: TextStyle(fontSize: 15,),),
            Text("Year",style: TextStyle(fontSize: 15,),),
          ],
        ),
        SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(style: BorderStyle.solid,width: 0.50),
                ),
              child: DropdownButtonHideUnderline(child:
              DropdownButton2(
                value: dropdownvalue,
                items: _items.map((String items){
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (value) => (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  }
                  );
                  },
                buttonStyleData: ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  width: 350,
                ),
                dropdownSearchData: DropdownSearchData(
                  searchInnerWidgetHeight: 50,
                  searchInnerWidget: Container(
                    height: 50,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8,),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return item.value.toString().contains(searchValue);
                  },
                ),
              ),
      ),
      ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(style: BorderStyle.solid,width: 0.50),
                ),
                child: DropdownButtonHideUnderline(child:
              DropdownButton2(
                value: dropdownvalue1,
            items: _items1.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (value) => (String? newValue) {
              setState(() {
                dropdownvalue1 = newValue!;
              }
              );
              },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 350,
                ),
                dropdownSearchData: DropdownSearchData(
                  searchInnerWidgetHeight: 50,
                  searchInnerWidget: Container(
                    height: 50,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return item.value.toString().contains(searchValue);
                  },
                ),
              ),
                ),
              ),
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(style: BorderStyle.solid, width: 0.50),
            ),
            child: DropdownButtonHideUnderline(child:
              DropdownButton2(
                value: dropdownvalue2,
                items: _items2.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (value) => (String? newValue) {
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });
                },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 50,
            width: 350,
          ),
                dropdownSearchData: DropdownSearchData(
                  searchInnerWidgetHeight: 50,
                  searchInnerWidget: Container(
                    height: 50,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return item.value.toString().contains(searchValue);
                  },
                ),
              ),
              ),
          ),
              Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(style: BorderStyle.solid, width: 0.50),
    ),
    child: DropdownButtonHideUnderline(child:
               DropdownButton2(
                value: dropdownvalue3,
                items: _items3.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (value) => (String? newValue) {
                  setState(() {
                    dropdownvalue3 = newValue!;
                  });
                },
                 buttonStyleData: const ButtonStyleData(
                   padding: EdgeInsets.symmetric(horizontal: 16),
                   height: 50,
                   width: 350,
                 ),
                 dropdownSearchData: DropdownSearchData(
                   searchInnerWidgetHeight: 50,
                   searchInnerWidget: Container(
                     height: 50,
                     padding: const EdgeInsets.only(
                       top: 8,
                       bottom: 4,
                       right: 8,
                       left: 8,
                     ),
                     child: TextFormField(
                       expands: true,
                       maxLines: null,
                       decoration: InputDecoration(
                         isDense: true,
                         contentPadding: const EdgeInsets.symmetric(
                           horizontal: 10,
                           vertical: 8,
                         ),
                         hintText: 'Search for an item...',
                         hintStyle: const TextStyle(fontSize: 15),
                         border: OutlineInputBorder(
                           borderRadius: const BorderRadius.all(
                             const Radius.circular(10.0),
                           ),
                           borderSide: BorderSide(
                             width: 0,
                             style: BorderStyle.none,
                           ),
                         ),
                       ),
                     ),
                   ),
                   searchMatchFn: (item, searchValue) {
                     return item.value.toString().contains(searchValue);
                   },
                 ),
              ),
              ),
    ),
          ],
          ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              height: 50,
              width: 100,
              child: OutlinedButton(
                child: Text('Excel', style: TextStyle(fontSize: 15),),
                onPressed: () {},
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                Container(
                  height: 50,
                  width: 100,
                  child: OutlinedButton(
                    child: Text('Search', style: TextStyle(fontSize: 15),),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 30,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.white,
          child: DataTable(
              columns: [
                DataColumn(label: Text('Sr.No'),),
                DataColumn(label: Text('Team Name'),),
                DataColumn(label: Text('Designation'),),
                DataColumn(label: Text('Gender'),),
                DataColumn(label: Text('Bank'),),
                DataColumn(label: Text('IFSC'),),
                DataColumn(label: Text('A/c No'),),
                DataColumn(label: Text('Actual Hours'),),
                DataColumn(label: Text('Present Hours'),),
                DataColumn(label: Text('Gross Pay'),),
                DataColumn(label: Text('Actual Pay'),),
                DataColumn(label: Text('PT'),),
                DataColumn(label: Text('TDS'),),
                DataColumn(label: Text('Total Deduction'),),
                DataColumn(label: Text('Net Pay'),),
              ],
              rows:[
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Jay Modi")),
                  DataCell(Text("Accountant")),
                  DataCell(Text("Male")),
                  DataCell(Text("Bank of Baroda")),
                  DataCell(Text("Kkbk000810")),
                  DataCell(Text("01480100041847")),
                  DataCell(Text("15")),
                  DataCell(Text("10")),
                  DataCell(Text("1000")),
                  DataCell(Text("900")),
                  DataCell(Text("100")),
                  DataCell(Text("00")),
                  DataCell(Text("500")),
                  DataCell(Text("900")),
                ]),
              ],
          ),
        ),
        ),
          SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 50,),
            Text("-Bank Name",style: TextStyle(fontSize: 15),),
            SizedBox(width: 50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(style: BorderStyle.solid, width: 0.50),
              ),
              child:
              DropdownButtonHideUnderline(child:
            DropdownButton2(
              value: dropdownvalue4,
              items: _items4.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (value) => (String? newValue) {
                setState(() {
                  dropdownvalue4 = newValue!;
                });
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                width: 350,
              ),
              dropdownSearchData: DropdownSearchData(
                searchInnerWidgetHeight: 50,
                searchInnerWidget: Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                    right: 8,
                    left: 8,
                  ),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      hintText: 'Search for an item...',
                      hintStyle: const TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                searchMatchFn: (item, searchValue) {
                  return item.toString().contains(searchValue);
                },
              ),
              onMenuStateChange: (isOpen) {
                if (!isOpen) {
                  textEditingController.clear();
                }
              },
              ),),
            ),
            ],
        ),
        SizedBox(height: 20,),
        Row(
          children:[
            SizedBox(width: 30,),
            Container(
              height: 50,
              width: 250,
              child: OutlinedButton(
                child: Text('PROCESS TO PAYMENT', style: TextStyle(fontSize: 20.0),),
                onPressed: () {},
              ),
            ),
        ],
        ),
    ],
      ),
      ),
    );
  }
}
