import 'package:flutter_academy_apps/ui/lib_screen.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _HeaderLink('Semua', true),
                _HeaderLink('Kuliah', false),
                _HeaderLink('Tugas', false),
                _HeaderLink('Ujian', false),
              ],
            ),
          ),
          LabelSubHeader('Kuliah'),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _LinkKalender('Senin', '13', true),
                _LinkKalender('Selasa', '14', false),
                _LinkKalender('Rabu', '15', false),
                _LinkKalender('Kamis', '16', false),
              ],
            ),
          ),
          _JadwalItem('SI-110', 'Algoritma', 'GB-0021',
              'Dr. Ahmad Syamsudin, S.T., M.Eng.', '7.00'),
          _JadwalItem('SI-120', 'Matematika Komputer', 'GB-0031',
              'Ir. Joko Widodo', '10.00'),
          LabelSubHeader('Tugas'),
          _ItemTugas(
              'Tugas Praktikum', 'Algoritma', 'GB-0021', 'Senin, 13 Nov 2021'),
          _ItemTugas('Tugas Kelompok', 'Matematika Komputer', 'GB-0031',
              'Selasa, 14 Nov 2021'),
        ],
      ),
    );
  }
}

class _ItemTugas extends StatelessWidget {
  final String jenisTugas;
  final String namaMataKuliah;
  final String ruangKuliah;
  final String hariPengumpulan;

  _ItemTugas(this.jenisTugas, this.namaMataKuliah, this.ruangKuliah,
      this.hariPengumpulan);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jenisTugas,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    namaMataKuliah,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    'Tenggat Waktu : ' + hariPengumpulan,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      child: InkWell(
                        onTap: () {},
                        highlightColor: Colors.orangeAccent.withOpacity(0.3),
                        splashColor: Colors.white.withOpacity(0.5),
                        child: Ink(
                          height: 28,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Details Tugas',
                              // style:
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //     padding:
                  //         EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(50),
                  //       color: Theme.of(context).primaryColor,
                  //     ),
                  //     child: Text(
                  //       'Detail Tugas',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //       ),
                  //     ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _JadwalItem extends StatelessWidget {
  final String kodeMataKuliah;
  final String namaMataKuliah;
  final String ruangKuliah;
  final String pengajarMataKuliah;
  final String waktuKuliah;

  _JadwalItem(this.kodeMataKuliah, this.namaMataKuliah, this.ruangKuliah,
      this.pengajarMataKuliah, this.waktuKuliah);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Text(
                waktuKuliah,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kodeMataKuliah,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    namaMataKuliah,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        ruangKuliah,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    pengajarMataKuliah,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _HeaderLink extends StatelessWidget {
  final String nameLink;
  final bool link;

  _HeaderLink(this.nameLink, this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      // decoration: BoxDecoration(
      //   color: link ? Colors.blue.shade500 : Colors.grey.shade300,
      //   borderRadius: BorderRadius.circular(50),
      // ),
      child: Column(
        children: [
          Text(
            nameLink,
            style: TextStyle(
              color:
                  link ? Theme.of(context).primaryColor : Colors.grey.shade300,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (link)
            Icon(
              Icons.radio_button_on,
              size: 12,
              color:
                  link ? Theme.of(context).primaryColor : Colors.grey.shade300,
            ),
        ],
      ),
    );
  }
}

class _LinkKalender extends StatelessWidget {
  final String nameDay;
  final String date;
  final bool aktiveLink;

  _LinkKalender(this.nameDay, this.date, this.aktiveLink);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color:
            aktiveLink ? Theme.of(context).primaryColor : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nameDay,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
