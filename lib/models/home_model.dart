class HomeModel {
  String image;
  String title;
  String description;
  HomeModel({
    required this.description,
    required this.image,
    required this.title,
  });
}

List<HomeModel> homeList = [
  HomeModel(
    description:
        'Get tips on balancing schoolwork & sports, recruiting, name-image-likeness (NIL) considerations and more!',
    image: 'assets/images/img1.jpg',
    title: 'Succeed On and Off the Court',
  ),
  HomeModel(
    description:
        'Get tips on balancing schoolwork & sports, recruiting, name-image-likeness (NIL) considerations and more!',
    image: 'assets/images/img2.jpg',
    title: 'Training Recovery Tips',
  ),
  HomeModel(
    description:
        'Get tips on balancing schoolwork & sports, recruiting, name-image-likeness (NIL) considerations and more!',
    image: 'assets/images/img1.jpg',
    title: 'Succeed On and Off the Court',
  ),
  
];
