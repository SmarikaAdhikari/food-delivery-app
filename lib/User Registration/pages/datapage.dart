import 'package:awakened_devs_tasks/User%20Registration/formdata/user_form.dart';
import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key, required this.userRegistration});
  final UserRegistration userRegistration;

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 158, 134, 199),
        title: const Text('Form Data',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                _buildUserInfoCard(
                  icon: Icons.person,
                  label: 'Name',
                  value: widget.userRegistration.name,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.cake,
                  label: 'Date of Birth',
                  value: "${widget.userRegistration.dateOfBirth.toLocal()}"
                      .split(' ')[0],
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.pets,
                  label: 'Favorite Animal',
                  value: widget.userRegistration.favoriteAnimal,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.email,
                  label: 'Email',
                  value: widget.userRegistration.email,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.lock,
                  label: 'Password',
                  value: widget.userRegistration.password,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.home,
                  label: 'Address',
                  value: widget.userRegistration.address,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.location_city,
                  label: 'City',
                  value: widget.userRegistration.city,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.map,
                  label: 'State',
                  value: widget.userRegistration.state,
                ),
                const Divider(),
                _buildUserInfoCard(
                  icon: Icons.phone,
                  label: 'Phone',
                  value: widget.userRegistration.phone,
                ),
                const Divider(),
                const SizedBox(height: 16.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Family Members:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                for (var i = 0;
                    i < widget.userRegistration.familyMembers.length;
                    i++)
                  _buildUserInfoCard(
                    icon: Icons.family_restroom,
                    label: 'Family Member ${i + 1}',
                    value: widget.userRegistration.familyMembers[i].name,
                  ),
    
              ],
            ),
            
          ),
          
        ),
      ),

    );
  }

  Widget _buildUserInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text("$label : $value"),
     
    );
  }
}
