#!/usr/bin/env python3
"""
Database seeding script for HieroVision backend.
Populates the database with initial landmark data.
"""

import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from app import create_app
from app.extensions import db
from app.models.landmark import Landmark
import uuid

def seed_landmarks():
    """Seed landmark data"""
    landmarks_data = [
        {
            'id': str(uuid.uuid4()),
            'name': 'Great Pyramid of Giza',
            'location': 'Giza',
            'type': 'pyramid',
            'description': 'The last remaining wonder of the ancient world, built for Pharaoh Khufu around 2580-2560 BCE. This massive limestone structure stands as a testament to ancient Egyptian engineering prowess.',
            'image': 'https://cdn-imgix.headout.com/media/images/e3e4b92772a00bf08922a79dd5a874d7-Giza.jpg?w=1200&h=675&fit=crop&auto=format,compress&q=80&cs=strip',
            'hieroglyph_name': '𓉴 𓊪 𓇳',
            'price': 150.0,
            'tours': ['Standard Tour', 'VIP Experience', 'Sunrise Tour', 'Chamber Access']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Temple of Karnak',
            'location': 'Luxor',
            'type': 'temple',
            'description': 'A vast temple complex dedicated to Amun-Ra, constructed over 2000 years by successive pharaohs. The complex covers more than 100 hectares.',
            'image': 'https://lp-cms-production.imgix.net/2023-07/shutterstockRF179121524.jpg?w=1920&h=640&fit=crop&crop=faces%2Cedges&auto=format&q=75&ar=16%3A9&cs=srgb&ixlib=react-8.6.4&v=1689647915',
            'hieroglyph_name': '𓉟 𓊪 𓇳',
            'price': 120.0,
            'tours': ['Guided Tour', 'Audio Tour', 'Night Illumination', 'Sacred Lake Tour']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Valley of the Kings',
            'location': 'Luxor',
            'type': 'tomb',
            'description': 'Royal burial ground containing the tombs of pharaohs including Tutankhamun and Ramesses II. Over 60 tombs have been discovered here.',
            'image': 'https://www.cleopatraegypttours.com/wp-content/uploads/2020/01/Valley-of-the-Kings.jpg?w=1920&h=640&fit=crop&crop=faces%2Cedges&auto=format&q=75&ar=16%3A9&cs=srgb&ixlib=react-8.6.4&v=1689647915',
            'hieroglyph_name': '𓇳 𓊪 𓈖',
            'price': 180.0,
            'tours': ['Tomb Explorer', 'Archaeological Tour', 'Photography Tour', 'King Tut Special']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Abu Simbel',
            'location': 'Aswan',
            'type': 'temple',
            'description': 'Two massive rock temples carved out of a mountainside during the reign of Pharaoh Ramesses II. Famous for the sun alignment phenomenon.',
            'image': 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj10nzR8OVlRmQ0q0qbwowgj_g28N37jrXTm7GsXAp0peY0UQ7aLDnSk_fVvQXXsqGfbveV_tgRJFfYWJMI6OTHcbfp8KQwp3w3EWvPpmnAZKEUbReL0G3mIEv1n5u2zFuKqfKP3g7eheg/w600-h314-p-k-no-nu/abu-simbel-temples-1.jpg,w600-h314-p-k-no-nu/abu-simbel-temples-2.jpg,w600-h314-p-k-no-nu/abu-simbel-temples-3.jpg',
            'hieroglyph_name': '𓎟 𓊪 𓊮',
            'price': 200.0,
            'tours': ['Sunrise Tour', 'Photography Tour', 'Sound & Light Show', 'Archaeological Experience']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Temple of Philae',
            'location': 'Aswan',
            'type': 'temple',
            'description': 'Beautiful temple complex dedicated to the goddess Isis, relocated to Agilkia Island. Known as the Pearl of Egypt.',
            'image': 'https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/egypt-philae-temple.jpg?w=1200&h=675&fit=crop&auto=format,compress&q=80&cs=strip&ixlib=react-8.6.4&v=1689647915',
            'hieroglyph_name': '𓊪 𓐍 𓍇',
            'price': 100.0,
            'tours': ['Boat Tour', 'Sound & Light Show', 'Photography Tour', 'Sunset Experience']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Dendera Temple',
            'location': 'Qena',
            'type': 'temple',
            'description': 'Temple complex dedicated to Hathor, famous for its astronomical ceiling and well-preserved reliefs.',
            'image': 'https://kenzly.com/wp-content/uploads/2024/06/Dendera-Temple-4.jpg',
            'hieroglyph_name': '𓉟 𓎛 𓇳',
            'price': 90.0,
            'tours': ['Astronomy Tour', 'Art & Reliefs Tour', 'Hathor Experience', 'Photography Workshop']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Saqqara Step Pyramid',
            'location': 'Saqqara',
            'type': 'pyramid',
            'description': 'The world\'s oldest stone pyramid, built for Pharaoh Djoser around 2670 BCE by the architect Imhotep.',
            'image': 'https://www.worldhistory.org/img/c/p/1200x900/4548.jpg?v=1700886260',
            'hieroglyph_name': '𓊪 𓇋 𓇳',
            'price': 130.0,
            'tours': ['Historical Tour', 'Architecture Focus', 'Underground Chambers', 'Imhotep Legacy']
        },
        {
            'id': str(uuid.uuid4()),
            'name': 'Edfu Temple',
            'location': 'Edfu',
            'type': 'temple',
            'description': 'One of the best-preserved temples in Egypt, dedicated to the falcon god Horus. Features dramatic reliefs depicting the battle between Horus and Seth.',
            'image': 'https://kenzly.com/wp-content/uploads/2024/06/Edfu-Temple-3.jpg',
            'hieroglyph_name': '𓅃 𓊪 𓇳',
            'price': 85.0,
            'tours': ['Mythology Tour', 'Relief Study', 'Falcon Experience', 'Ancient Stories']
        }
    ]
    
    # Clear existing landmarks
    Landmark.query.delete()
    
    # Add new landmarks
    for landmark_data in landmarks_data:
        landmark = Landmark(**landmark_data)
        db.session.add(landmark)
    
    db.session.commit()
    print(f"Successfully seeded {len(landmarks_data)} landmarks!")

def main():
    app = create_app()
    
    with app.app_context():
        print("Seeding landmark data...")
        seed_landmarks()
        print("Database seeding completed!")

if __name__ == '__main__':
    main()
