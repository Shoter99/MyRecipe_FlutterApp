import React, { useState} from 'react';

import { Text, View, StyleSheet, ScrollView, TouchableOpacity, Image  } from 'react-native';
import {FontAwesomeIcon} from '@fortawesome/react-native-fontawesome'
import {faSearch, faHome, faHeart, faPlusCircle, faMinusCircle} from '@fortawesome/free-solid-svg-icons'
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
// import appBar from 'components/appBar'

const Stack = createNativeStackNavigator()

const RecipeCard = () => {
  const [numOfPortions, setNumOfPortions] = useState(1)
  return (
    <View >
      <View style={styles.portion}>
        <Text style={styles.portion_text}>Number of portion </Text>
        <View style={{flexDirection: 'row', alignItems: 'center'}}>
        <TouchableOpacity onPress={() => setNumOfPortions(numOfPortions+1)}>
          <FontAwesomeIcon style={styles.icon} size={20} icon={faPlusCircle} />
        </TouchableOpacity>
        <Text style={{padding: 10, fontSize: 24}}>{numOfPortions}</Text>
        <TouchableOpacity onPress={() => 
          {if(numOfPortions > 1) setNumOfPortions(numOfPortions-1)}}>
          <FontAwesomeIcon style={styles.icon} size={20} icon={faMinusCircle} />
        </TouchableOpacity>
        </View>
      </View>
      <View style={{width: 325, height: 2, backgroundColor: '#000', marginLeft: 30}}></View>
      <ScrollView style={{marginTop: '5%', height: '40%'}}>
        {Ingredient({name: 'Pasta', amount: 5*numOfPortions})}
        {Ingredient({name: 'Tomato', amount: 1*numOfPortions})}
        {Ingredient({name: 'Meat', amount: 6*numOfPortions})}
        {Ingredient({name: 'Meat', amount: 6*numOfPortions})}
        {Ingredient({name: 'Meat', amount: 6*numOfPortions})}
        {Ingredient({name: 'Meat', amount: 6*numOfPortions})}
        {Ingredient({name: 'Meat', amount: 6*numOfPortions})}
        {Ingredient({name: 'Meat', amount: 6*numOfPortions})}
        
      </ScrollView>
      <View style={{backgroundColor: '#555', margin: '5%', marginBottom: '3%', borderRadius: 20, height: '35%', padding: '5%'}}>
        <Text style={{marginBottom: 5, marginLeft: 20, fontSize: 20}}>Recipe:</Text>
        <View style={{justifyContent: 'center', width: 300, height: 1.5, backgroundColor: '#000'}}></View>
      </View>
      <View style={{flexDirection: 'row', alignItems: 'center', justifyContent: 'flex-end', marginRight: '5%', }}>
        <Text style={{fontSize: 20, }}>Add To Favorites   </Text>
        <FontAwesomeIcon style={styles.icon} size={40} icon={faHeart} />
      </View>
    </View>
  )

  function Ingredient({name, amount}) {
    return <View style={styles.ingredient}>

      <View style={{ backgroundColor: '#000', width: 225, borderRadius: 20 }}>
        <Text style={{ padding: '3%', fontSize: 20, color: '#fff', textAlign: 'center' }}>{name}</Text>
      </View>
      <View style={{ backgroundColor: '#000', width: 50, borderRadius: 20 }}>
        <Text style={{ padding: '15%', justifyContent: 'center', fontSize: 20, color: '#fff', textAlign: 'center' }}>{amount}</Text>
      </View>
    </View>;
  }
}

const HomeScreen = ({navigation}) => {
    return <View style={styles.container}>
      {/* <View style={styles.appBar}>
        <Text style={styles.appBar_title}>MyCuisine</Text>
        <FontAwesomeIcon style={styles.appBar_search} icon={faSearch} size={25} />
      </View> */}
      <View style={styles.content}>
        <ScrollView>
          <View style={styles.row}>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
          </View>
          <View style={styles.row}>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
          </View>
          <View style={styles.row}>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
          </View>
          <View style={styles.row}>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => navigation.navigate('RecipeCard')} style={styles.card}>
            <Image source={{uri: 'https://ocdn.eu/pulscms-transforms/1/Ejek9kpTURBXy8wYTQ2YmY1M2NlYTVlMTM2NWU2MjdiMmRjODExZTUxZi5qcGeTlQMAH80D6M0CMpMFzQMUzQG8kwmmZjk3NGQzBoGhMAU/spaghetti-puttanesca.webp'}}
               style={{flex: 3,  width: 148*1.2, height: 160, borderTopRightRadius: 19, borderTopLeftRadius:19}} />
              <Text style={{flex:1, marginLeft: 10, paddingTop: 10, fontSize: 20}} >Spaghetti</Text>
            </TouchableOpacity>
          </View>
        </ScrollView>
      </View>
      <View style={styles.bottomNavBar}>
        <TouchableOpacity><FontAwesomeIcon style={styles.appBar_text} size={25} icon={faHome}></FontAwesomeIcon></TouchableOpacity>
        <TouchableOpacity><FontAwesomeIcon style={styles.appBar_text} size={25} icon={faHeart}></FontAwesomeIcon></TouchableOpacity>
        <TouchableOpacity><FontAwesomeIcon style={styles.appBar_text} size={25} icon={faPlusCircle}></FontAwesomeIcon></TouchableOpacity>

      </View>

    </View>;
  }

const YourApp = () => {
  

  
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name='HomeScreen'  options={{
          title: 'MyCuisine' ,
          headerStyle: {
            backgroundColor: "#8A817C",
          },
          headerTintColor: '#fff',
          headerRight: () => (
            <TouchableOpacity><FontAwesomeIcon style={styles.appBar_search} icon={faSearch} size={25} /></TouchableOpacity>
            ),
        }}  component={HomeScreen}/>
        <Stack.Screen name='RecipeCard' component={RecipeCard} options={{
          title: 'Spaghetti',
          headerStyle: {
            backgroundColor: "#8A817C",
          },
          headerTintColor: '#fff',
          }} />

      </Stack.Navigator>
    </NavigationContainer>
  );
}
const styles = StyleSheet.create({
  appBar: {
    position: 'absolute',
    top: 0,
    height: '8%',
    flexDirection: 'row',
    width: '100%',
    backgroundColor: '#8A817C',
    fontFamily: 'FontAwesome5',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  appBar_title: {
    fontSize: 25,
    marginLeft: '10%',

    color: '#fff',
    fontWeight: 'bold',
  },
  appBar_search: {
    color: '#fff',
    marginRight: '10%',
  },
  container: {
    flex: 1,
  },
  title: {
    fontSize: 20,
  },
  bottomNavBar: {
    position: 'absolute',
    bottom: 0,
    height: '8%',
    flexDirection: 'row',
    alignItems: 'center',
    width: '100%',
    justifyContent: 'space-around',
    backgroundColor: '#C4C4C4',

  },
  appBar_text: {
    flex: 1,
    fontSize: 20,
    color: '#000',
    textAlign: 'center',
  },
  content:{
    marginBottom: '16%',
    width: '100%',
    flexDirection: 'column',
  },
  row:{
    flexDirection: 'row',
    justifyContent: 'space-around',
  },
  card: {
    width: 148*1.2,
    marginTop: '3%',
    marginBottom: '4%',
    backgroundColor: '#c4c4c4',
    height: 160*1.2,
    borderRadius: 19,
  },
  portion: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginLeft: '17%',
    marginRight: '17%',
    alignItems: 'center',
  },
  portion_text: {
  fontSize: 20,
  fontWeight:'400',
  },
  ingredient: {
    marginTop: '5%',
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginLeft: '10%',
    marginRight: '12%',
  }
})
export default YourApp;