import 'package:flutter/material.dart';

class EditAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const EditAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      centerTitle:
          true, //tirei o title de um widget Center e usei a propriedade centerTitle do AppBar para centralizar o título, que é a logo do app. Parece que assim funciona e com o Widget Center não
      title: const Image(
        image: AssetImage("assets/poketinder_logo.png"),
        height: 65,
      ),
    );
  }

  //Abaixo é um getter criado para definir o tamanho correto do AppBar. No flutter nós que temos que implementar manualmente o tamanha da appBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
  //Size.fromHeight(kToolbarHeight) que é o tamanho padrão da appbar no flutter que é de 56px.Coloquei +20 para ir para 76px, mas como a toolbarHeight é de 72px, o resultado final é de 72px mesmo.
}
