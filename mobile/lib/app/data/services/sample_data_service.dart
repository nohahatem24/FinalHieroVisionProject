import '../models/landmark.dart';
import '../models/review.dart';

class SampleDataService {
  static List<Review> getSampleReviews() {
    return [
      Review(
        id: '1',
        landmarkId: '1',
        userId: 'user1',
        userName: 'Ahmed Hassan',
        rating: 5.0,
        comment:
            'Absolutely incredible! The Great Pyramid is a must-see wonder. The engineering and history behind it is mind-blowing.',
        createdAt: DateTime.now().subtract(const Duration(days: 2)),
      ),
      Review(
        id: '2',
        landmarkId: '1',
        userId: 'user2',
        userName: 'Sarah Johnson',
        rating: 4.5,
        comment:
            'Amazing experience! The tour guide was very knowledgeable. Would definitely recommend visiting early in the morning.',
        createdAt: DateTime.now().subtract(const Duration(days: 5)),
      ),
      Review(
        id: '3',
        landmarkId: '2',
        userId: 'user3',
        userName: 'Mohamed Ali',
        rating: 4.8,
        comment:
            'Karnak Temple is absolutely stunning. The massive columns and hieroglyphs tell such an amazing story.',
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
    ];
  }

  static List<Landmark> getSampleLandmarks() {
    final reviews = getSampleReviews();

    return [
      Landmark(
        id: '1',
        name: 'Great Pyramid of Giza',
        description:
            'The Great Pyramid of Giza is the oldest and largest of the three pyramids in the Giza pyramid complex. Built as a tomb for the pharaoh Khufu, it was completed around 2560 BCE and is one of the Seven Wonders of the Ancient World.',
        imageUrl:
            'https://cdn-imgix.headout.com/media/images/e3e4b92772a00bf08922a79dd5a874d7-Giza.jpg?w=1200&h=675&fit=crop&auto=format,compress&q=80&cs=strip&ixlib=react-8.6.4&v=1689647915',
        location: 'Giza, Egypt',
        type: 'pyramid',
        hieroglyphName: '𓉴',
        price: 25.0,
        averageRating: 4.8,
        reviewCount: 1250,
        tours: ['Morning Tour', 'Sunset Tour', 'Private Guide'],
        isBookmarked: false,
        isFavorite: false,
        reviews: reviews.where((r) => r.landmarkId == '1').toList(),
      ),
      Landmark(
        id: '2',
        name: 'Temple of Karnak',
        description:
            'The Karnak Temple Complex is a vast mix of decayed temples, chapels, pylons, and other buildings. It was built over more than 1000 years by successive pharaohs, making it one of the largest religious complexes ever constructed.',
        imageUrl:
            'https://lp-cms-production.imgix.net/2023-07/shutterstockRF179121524.jpg?w=1920&h=640&fit=crop&crop=faces%2Cedges&auto=format&q=75&ar=16%3A9&cs=srgb&ixlib=react-8.6.4&v=1689647915',
        location: 'Luxor, Egypt',
        type: 'temple',
        hieroglyphName: '𓉗',
        price: 20.0,
        averageRating: 4.7,
        reviewCount: 890,
        tours: ['Historical Tour', 'Evening Sound & Light Show'],
        isBookmarked: false,
        isFavorite: false,
        reviews: reviews.where((r) => r.landmarkId == '2').toList(),
      ),
      Landmark(
        id: '3',
        name: 'Valley of the Kings',
        description:
            'The Valley of the Kings is a valley in Egypt where, for a period of nearly 500 years from the 16th to 11th century BC, rock-cut tombs were excavated for the pharaohs and powerful nobles of the New Kingdom.',
        imageUrl:
            'https://www.cleopatraegypttours.com/wp-content/uploads/2020/01/Valley-of-the-Kings.jpg?w=1920&h=640&fit=crop&crop=faces%2Cedges&auto=format&q=75&ar=16%3A9&cs=srgb&ixlib=react-8.6.4&v=1689647915',
        location: 'Luxor, Egypt',
        type: 'tomb',
        hieroglyphName: '𓈖',
        price: 30.0,
        averageRating: 4.9,
        reviewCount: 2100,
        tours: ['Multi-tomb Tour', 'Tutankhamun Special', 'Photography Tour'],
        isBookmarked: false,
        isFavorite: false,
      ),
      Landmark(
        id: '4',
        name: 'Abu Simbel Temples',
        description:
            'Abu Simbel is an archaeological site containing two massive rock-cut temples in southern Egypt. The temples were originally carved out of the mountainside in the 13th century BC, during the 19th Dynasty reign of the Pharaoh Ramesses II.',
        imageUrl:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj10nzR8OVlRmQ0q0qbwowgj_g28N37jrXTm7GsXAp0peY0UQ7aLDnSk_fVvQXXsqGfbveV_tgRJFfYWJMI6OTHcbfp8KQwp3w3EWvPpmnAZKEUbReL0G3mIEv1n5u2zFuKqfKP3g7eheg/w600-h314-p-k-no-nu/abu-simbel-temples-1.jpg,w600-h314-p-k-no-nu/abu-simbel-temples-2.jpg,w600-h314-p-k-no-nu/abu-simbel-temples-3.jpg,w600-h314-p-k-no-nu/abu-simbel-temples-4.jpg',
        location: 'Aswan, Egypt',
        type: 'temple',
        hieroglyphName: '𓄿',
        price: 40.0,
        averageRating: 4.9,
        reviewCount: 750,
        tours: ['Sunrise Tour', 'Flying Visit from Aswan'],
        isBookmarked: false,
        isFavorite: false,
      ),
      Landmark(
        id: '5',
        name: 'Temple of Hatshepsut',
        description:
            'The Mortuary Temple of Hatshepsut is a mortuary temple built during the reign of Pharaoh Hatshepsut of the Eighteenth Dynasty of Egypt. Located opposite the city of Luxor, it is considered to be a masterpiece of ancient architecture.',
        imageUrl:
            'https://www.worldhistory.org/img/c/p/1600x900/187.jpg?v=1700886260',
        location: 'Luxor, Egypt',
        type: 'temple',
        hieroglyphName: '𓁹',
        price: 18.0,
        averageRating: 4.6,
        reviewCount: 650,
        tours: ['Historical Tour', 'Combined West Bank Tour'],
        isBookmarked: false,
        isFavorite: false,
      ),
      Landmark(
        id: '6',
        name: 'Sphinx of Giza',
        description:
            'The Great Sphinx of Giza is a limestone statue of a reclining sphinx with the head of a human and the body of a lion. Facing directly from west to east, it stands on the Giza plateau on the west bank of the Nile.',
        imageUrl:
            'https://www.egypttoursportal.com/images/2017/11/The-Great-Sphinx-Egypt-Tours-Portal-1-e1511900988420.jpg?w=1200&h=675&fit=crop&auto=format,compress&q=80&cs=strip&ixlib=react-8.6.4&v=1689647915',
        location: 'Giza, Egypt',
        type: 'monument',
        hieroglyphName: '𓎛',
        price: 15.0,
        averageRating: 4.5,
        reviewCount: 1100,
        tours: ['Pyramid Complex Tour', 'Photography Session'],
        isBookmarked: false,
        isFavorite: false,
      ),
      Landmark(
        id: '7',
        name: 'Philae Temple',
        description:
            'Philae is an island in Lake Nasser, Egypt. It was the previous site of an Ancient Egyptian temple complex in southern Egypt. The complex was dismantled and relocated to nearby Agilkia Island as part of the UNESCO Nubia Campaign project.',
        imageUrl:
            'https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/egypt-philae-temple.jpg?w=800&h=450&fit=crop&auto=format,compress&q=80&cs=strip&ixlib=react-8.6.4&v=1689647915',
        location: 'Aswan, Egypt',
        type: 'temple',
        hieroglyphName: '𓊪',
        price: 22.0,
        averageRating: 4.7,
        reviewCount: 420,
        tours: ['Boat Tour', 'Sound & Light Show'],
        isBookmarked: false,
        isFavorite: false,
      ),
      Landmark(
        id: '8',
        name: 'Saqqara Pyramid Complex',
        description:
            'Saqqara is an Egyptian village in the Giza Governorate, that contains ancient burial grounds of Egyptian royalty, serving as the necropolis for the ancient Egyptian capital, Memphis. The area contains numerous pyramids, including the world\'s oldest standing step pyramid.',
        imageUrl:
            'https://www.worldhistory.org/img/c/p/1200x900/4548.jpg?v=1700886260',
        location: 'Memphis, Egypt',
        type: 'pyramid',
        hieroglyphName: '𓊨',
        price: 28.0,
        averageRating: 4.4,
        reviewCount: 380,
        tours: ['Step Pyramid Tour', 'Memphis & Saqqara Combined'],
        isBookmarked: false,
        isFavorite: false,
      ),
    ];
  }
}
