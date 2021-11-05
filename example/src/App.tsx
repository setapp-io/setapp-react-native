import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';
import { getStringOrNull } from 'setapp';

export default function App() {
  const [result, setResult] = React.useState<string | null>(null);

  React.useEffect(() => {
    getStringOrNull('hello-world').then(setResult).catch(setResult);
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
