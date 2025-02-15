/*

1. SingleChildScrollView
- Used for making a single child widget scrollable.
- Best for small lists or layouts that don’t need lazy loading.
  

SingleChildScrollView(
  child: Column(
    children: [
      Text("Item 1"),
      Text("Item 2"),
      Text("Item 3"),
      // Add more widgets...
    ],
  ),
)
2. ListView
Used for displaying a list of items.
Supports lazy loading (only builds visible items).


ListView.builder(
  itemCount: 20,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text("Item $index"),
    );
  },
)

3. GridView
Used for displaying a grid of items.

GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Number of columns
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: 10,
  itemBuilder: (context, index) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Center(child: Text("Item $index")),
    );
  },
)

4. PageView
Used for horizontal or vertical page scrolling.

PageView(
  children: [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ],
)

5. CustomScrollView & Slivers
Provides more flexibility with advanced scrolling effects.
dart
Copy
Edit
CustomScrollView(
  slivers: [
    SliverAppBar(
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(title: Text("SliverAppBar")),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(title: Text("Item $index")),
        childCount: 20,
      ),
    ),
  ],
)
*/