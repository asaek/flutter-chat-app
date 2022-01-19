import 'package:flutter/material.dart';
import 'package:proyecto2_/models/usuarios.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsuariosPage extends StatelessWidget {
  final usuariosTemporales = [
    Usuario(
        online: true,
        email: 'asaek60@gmail.com',
        nombre: 'Asaek',
        uid: '21011988'),
    Usuario(
        online: true,
        email: 'kyary@gmail.com',
        nombre: 'Kyary',
        uid: '27011993')
  ];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Usuarios',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.exit_to_app,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            // child: Icon(Icons.check_circle, color: Colors.blue[400]),
            child: Icon(Icons.check_circle, color: Colors.red[400]),
          ),
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _onRefresh,
        header: WaterDropHeader(
          complete: Icon(Icons.check, color: Colors.blue[400]),
          waterDropColor: Colors.blue[400]!,
        ),
        child: _ListViewUsuarios(),
      ),
    );
  }

  ListView _ListViewUsuarios() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) =>
          _ListTileCard(usuariosTemporales[index]),
      itemCount: usuariosTemporales.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  ListTile _ListTileCard(Usuario usuario) {
    return ListTile(
      title: Text(usuario.nombre),
      subtitle: Text(usuario.email),
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Text(
          usuario.nombre.substring(0, 2),
        ),
      ),
      trailing: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: usuario.online ? Colors.green[300] : Colors.red[300],
          shape: BoxShape.circle,
        ),
        // color: Colors.amber[100],
      ),
    );
  }

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    _refreshController.refreshCompleted();
  }
}
