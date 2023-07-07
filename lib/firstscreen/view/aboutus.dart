import 'package:careerpoint/contactus/view/contact_page.dart';
import 'package:careerpoint/employers/view/employer_page.dart';
import 'package:careerpoint/firstscreen/view/faq_page.dart';
import 'package:careerpoint/login/view/login_page.dart';
import 'package:careerpoint/searchjobs/view/search_page.dart';
import 'package:careerpoint/signup/view/signup_page.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('About Us'),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                DrawerButton(),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            '''Careerpoint.com is the most innovative and second largest online job portal in India. Founded in 2008, over the past decade, careerpoint.com has become a prominent name in the recruitment industry. The popularity of the portal is evident from the fact that it has crossed the 3.4 crore candidate landmark and has more than 3 lakh latest job vacancies from leading companies on the site.

careerpoint.com connects jobseekers and recruiters by accurately matching candidate profiles to the relevant job openings through an advanced 2-way matching technology. While most job portals only focus on getting candidates the next job, Shine focuses on the entire career growth of candidates. To this end, careerpoint has launched Shine Learning- India’s largest career skills site for working professionals with over 500+ courses & certifications.

As the industry shifts towards mobile, careeroint.com is leading the transition and is the fastest growing job portal on mobile devices, witnessing a 100% YOY growth in mobile traffic and also offers on-the-go jobs through the  Job Search App.

careerpoint works closely to bridge the gap between talent & opportunities and offers end-to-end recruitment solutions. careerpoint Job Fair brings candidates and top employers under one roof. While careerpoint HR Conclave brings top HR leaders to share insights on latest trends, innovations & best practices in the HR industry. Shine also has a large reach through its print product, careerpoint Jobs – the Tuesday Job supplement of Hindustan Times– making it the only job portal with an integrated print and online offering''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
class MyDrawer extends StatelessWidget {
  void handleDrawerItemTap(BuildContext context) {
    // Handle drawer item tap here
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Build your profile',
            ),
            accountEmail:
                Text('Job opportunities waiting for you at Careerpoint'),

            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avathr.png'),
            ),
            
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text('Login'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),

          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchJobs(),
                        ));
                  },
                  child: Text(
                    'Search jobs',
                    style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),

          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Employers(),));
                  },
                  child: Text(
                    'Employers',
                    style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUs(),
                        ));
                  },
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),

          const SizedBox(height: 15),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FAQ(),
                        ));
                  },
                  child: Text(
                    'FAQ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          const SizedBox(height: 15),

          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUs(),
                        ));
                  },
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
