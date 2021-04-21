let create = () => {
  let uid = GameObjectRepo.getMaxUID()

  GameObjectRepo.setMaxUID(uid->succ)

  let gameObject = uid->GameObjectEntity.create

  CreateTransformDoService.create()->Result.bind(transform =>
    gameObject->AddComponentGameObjectDoService.addTransform(transform)
  )
}
