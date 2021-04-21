#!/bin/bash
echo "Hello, what is the name of the Component?"
read component

echo "What category?"
read Category

echo "👉 creating a folder called: $component"
mkdir $component
echo "✅ done"

echo "👉 creating a Component called: $component"
sed "s/CompOne/$component/g" CompOne/CompOne.tsx >> "$component/$component.tsx"
echo "✅ done"

echo "👉 creating a CSS called: $component.css"
sed "s/CompOne/$component/g" CompOne/CompOne.css >> "$component/$component.css"
echo "✅ done"

echo "👉 creating a Story called: $component.stories.tsx"
sed "s/CompOne/$component/g" CompOne/CompOne.stories.tsx >> "$component/$component.stories.tsx"
sed "s/Category/$Category/g" "$component/$component.stories.tsx" >> "$component/$component.stories.tsx"
echo "✅ done"

echo "👉 creating a Test called: $component.test.tsx"
sed "s/CompOne/$component/g" CompOne/CompOne.test.tsx >> "$component/$component.test.tsx"
echo "✅ done"

echo "👉 creating a barrel file called: index.ts"
sed "s/CompOne/$component/g" CompOne/index.tsx >> "$component/index.ts"
echo "✅ done"

# already exported...
# echo "👉 update barrel file..."
# echo "export * from './$component';"  >> "./index.ts"

echo "✅ done"
