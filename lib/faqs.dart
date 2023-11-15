import 'package:flutter/material.dart';


class FAQPage extends StatelessWidget {
  final List<FAQItem> faqs = [
    FAQItem(
      question: 'What ingredients are used in your products?',
      answer:
          'We use natural and organic ingredients in our skincare products, avoiding harsh chemicals. For specific ingredients, please check the product label or our website for details.',
    ),
    FAQItem(
      question: 'What skincare paroducts should everyone use?',
      answer:
          'At Glad Glamour, we truly believe that absolutely everyone should be using and can benefit from incorporating three specific products into their daily routine. These three products are a Vitamin C serum (of no less than 10% L-ascorbic acid), a Retinol product, and a quality broad-spectrum sunscreen.',
    ),
    
    FAQItem(
      question: 'Do eye creams actually work?',
      answer:
          'An eye cream can help reduce puffiness and dark circles and hydrate the skin. However, if you have oily skin, you may not need an eye cream as the skincare routine.',
        
    ),

    FAQItem(
      question: 'How often should I exfoliate ?',
      answer:
          'The frequency you should be exfoliating will be based off of if your skin type can tolerate it. For dry and sensitive skin once every 10 days is sufficient, normal to combination skin once a week, oily skin should exfoliate 2-3 times a week.',
    ),

    FAQItem(
      question: 'What areas of my body should I apply skincare products?',
      answer:
          'Of course, skincare products should be applied to your face, but did you know you should also be applying serums and creams to your neck, décolleté and hands. These are also areas that show signs of aging, so they are equally important to treat and take care of.',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 207),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 19, 13),
        title: Text('FAQs'),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(
              faqs[index].question,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  faqs[index].answer,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
