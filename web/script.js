document.getElementById('build-zip').onclick = async () => {
  const id = document.getElementById('model-id').value.trim();
  const modelFile = document.getElementById('model-json').files[0];
  const textureFile = document.getElementById('texture-png').files[0];

  if (!id || !modelFile || !textureFile) {
    alert('Please fill ID and select both files.');
    return;
  }

  const zip = new JSZip();

  const modelData = await modelFile.text();
  const textureData = await textureFile.arrayBuffer();

  // Place files into correct structure
  zip.file(`assets/minecraft/models/item/${id}.json`, modelData);
  zip.file(`assets/minecraft/textures/item/${id}.png`, textureData);

  // Optional: create items wrapper (you can skip if you let plugin create it)
  const itemJson = JSON.stringify({
    model: {
      type: 'minecraft:model',
      model: `minecraft:item/${id}`
    }
  }, null, 2);
  zip.file(`assets/minecraft/items/${id}.json`, itemJson);

  const blob = await zip.generateAsync({ type: 'blob' });
  const a = document.createElement('a');
  a.href = URL.createObjectURL(blob);
  a.download = 'pack.zip';
  a.click();
};