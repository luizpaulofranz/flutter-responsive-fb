import 'package:facebook_clone/model/post.dart';
import 'package:facebook_clone/model/story.dart';
import 'package:facebook_clone/model/user.dart';

/*
* Images source: https://source.unsplash.com/
* specific photo:
*   https://source.unsplash.com/JQFHdpOKz2k/800x600
* Random photo:
*   https://source.unsplash.com/9ChfwZzv4ys/800x600
* */

User currentUser = User(
    name: "Pedro de Alcântara",
    profilePictureUrl: "https://source.unsplash.com/EQFtEzJGERg/800x600");

/* Online users list */
List<User> onlineUsers = [
  User(
      name: "José Renato de almeida",
      profilePictureUrl: "https://source.unsplash.com/UJLAMjEjISo/800x600"),
  User(
    name: "Maria Almeida",
    profilePictureUrl: "https://source.unsplash.com/0wRXAXqIp58/800x600",
  ),
  User(
    name: "Fernando Lima de albuquerque filho",
    profilePictureUrl: "https://source.unsplash.com/59HOrlAKTOU/800x600",
  ),
  User(
    name: "Marcela Faria",
    profilePictureUrl: "https://source.unsplash.com/GXzHGgzraHc/800x600",
  ),
  User(
    name: "Carlos Eduardo",
    profilePictureUrl: "https://source.unsplash.com/y8yimL21z8s/800x600",
  ),
  User(
    name: "Joana Santos",
    profilePictureUrl: "https://source.unsplash.com/PXWiHU7pbeg/800x600",
  ),
  User(
    name: "Rodrigo Caio",
    profilePictureUrl: "https://source.unsplash.com/MS0RHQ1enek/800x600",
  ),
  User(
    name: "Pedro do Carmo",
    profilePictureUrl: "https://source.unsplash.com/9ChfwZzv4ys/800x600",
  ),
];

/* List of stories */
List<Story> storiesList = [
  Story(
    user: onlineUsers[0],
    pictureUrl: "https://source.unsplash.com/JMWjOup32Fk/800x600",
    viewed: true,
  ),
  Story(
    user: onlineUsers[1],
    pictureUrl: "https://source.unsplash.com/no_TCkPUq_s/800x600",
    viewed: true,
  ),
  Story(
      user: onlineUsers[2],
      pictureUrl: "https://source.unsplash.com/6dX5TPPM34M/800x600"),
  Story(
      user: onlineUsers[3],
      pictureUrl: "https://source.unsplash.com/PO7CGnoDFUI/800x600"),
  Story(
      user: onlineUsers[4],
      pictureUrl: "https://source.unsplash.com/rewyZqUwAqY/800x600"),
  Story(
      user: onlineUsers[5],
      pictureUrl: "https://source.unsplash.com/1HpQU1evGK8/800x600"),
  Story(
      user: onlineUsers[6],
      pictureUrl: "https://source.unsplash.com/W9z_628BBpc/800x600"),
  Story(
      user: onlineUsers[7],
      pictureUrl: "https://source.unsplash.com/DOb-2jd0sbc/800x600"),
];

// /* Lista de postagens */
List<Post> posts = [
  Post(
      user: onlineUsers[0],
      description: "Passeio muito legal no final de semana",
      timeAgo: "20m",
      imageUrl: "https://source.unsplash.com/DOb-2jd0sbc/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[1],
      description: "Quero compartilhar com você algo que aconteceu...",
      timeAgo: "40m",
      imageUrl: "https://source.unsplash.com/G0H58Z5aPog/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[2],
      description: "Não recomendo esse lugar, não fomos bem atendidos",
      timeAgo: "55m",
      imageUrl: "https://source.unsplash.com/1a_u4n02YNo/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[3],
      description:
          "Não importa o que você sabe, mas o que faz com o que você sabe!",
      timeAgo: "1h",
      imageUrl: "https://source.unsplash.com/sfL_QOnmy00/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[4],
      description:
          "Preciso de indicações de eletricista, meu chuveiro pifou :(",
      timeAgo: "2h",
      imageUrl: "https://source.unsplash.com/_tWMmC9CQXQ/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[5],
      description: "Que chuva maravilhosa!",
      timeAgo: "2d",
      imageUrl: "https://source.unsplash.com/a4wUKaaMGWQ/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[6],
      description: "Um dia mais que especial, nos divertimos bastante ;)",
      timeAgo: "3d",
      imageUrl: "https://source.unsplash.com/YS1OOmHAFD0/800x600",
      likes: 100,
      comments: 30,
      shares: 3),
  Post(
      user: onlineUsers[7],
      description: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista, "
          "insista, corra atrás, passe algumas noites sem dormir direito, "
          "mas nunca desista de seus sonhos, acredite que é capaz, se olhe "
          "no espelho e diga pra você: VOCÊ TEM POTENCIAL! "
          "Ninguém além de você mesmo pode torná-lo real.",
      timeAgo: "3d",
      imageUrl: "https://source.unsplash.com/Ng2Hg1YMMuU/800x600",
      likes: 230,
      comments: 25,
      shares: 3),
];
